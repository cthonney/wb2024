// app/javascript/controllers/three_controller.js
import { Controller } from "@hotwired/stimulus"
import * as THREE from "three";
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls.js'

export default class extends Controller {
  connect() {
    console.log("Initializing three.js scene...")

    // Canvas
    const canvas = document.querySelector('canvas.webgl')

    // Scene
    const scene = new THREE.Scene()

    /**
     * ------ Galaxy ------
     */
    const parameters = {
      count: 20000, // Reduced number of particles
      size: 0.01,
      radius: 3,
      branches: 5,
      spin: 2,
      randomness: 0.315,
      randomnessPower: 2.25,
      insideColor: '#9E68DD',
      outsideColor: '#6BDAB0'
    }

    let geometry = null
    let material = null
    let points = null

    const generateGalaxy = () => {
        if (points !== null) {
            geometry.dispose()
            material.dispose()
            scene.remove(points)
        }

        geometry = new THREE.BufferGeometry()

        const positions = new Float32Array(parameters.count * 3)
        const colors = new Float32Array(parameters.count * 3)

        const colorInside = new THREE.Color(parameters.insideColor)
        const colorOutside = new THREE.Color(parameters.outsideColor)

        for(let i = 0; i < parameters.count; i++) {
            const i3 = i * 3

            // Positions
            const radius = Math.random() * parameters.radius
            const spinAngle = radius * parameters.spin
            const branchesAngle = (i % parameters.branches) / parameters.branches * Math.PI * 2

            const randomX = Math.pow(Math.random(), parameters.randomnessPower) * (Math.random() < 0.5 ? 1 : - 1) * parameters.randomness * radius
            const randomY = Math.pow(Math.random(), parameters.randomnessPower) * (Math.random() < 0.5 ? 1 : - 1) * parameters.randomness * radius
            const randomZ = Math.pow(Math.random(), parameters.randomnessPower) * (Math.random() < 0.5 ? 1 : - 1) * parameters.randomness * radius

            positions[i3    ] = Math.cos(branchesAngle + spinAngle) * radius + randomX
            positions[i3 + 1] = randomY
            positions[i3 + 2] = Math.sin(branchesAngle + spinAngle) * radius + randomZ

            // Colors
            const mixedColor = colorInside.clone()
            mixedColor.lerp(colorOutside, radius / parameters.radius)

            colors[i3] = mixedColor.r
            colors[i3 + 1] = mixedColor.g
            colors[i3 + 2] = mixedColor.b
        }

        geometry.setAttribute(
            'position',
            new THREE.BufferAttribute(positions, 3)
        )

        geometry.setAttribute(
            'color',
            new THREE.BufferAttribute(colors, 3)
        )

        material = new THREE.PointsMaterial({
            size: parameters.size,
            sizeAttenuation: true,
            depthWrite: false,
            blending: THREE.AdditiveBlending,
            vertexColors: true
        })

        points = new THREE.Points(geometry, material)
        scene.add(points)
    }
    generateGalaxy()

    /**
     * Sizes
     */
    const sizes = {
        width: 700,
        height: 600
    }

    window.addEventListener('resize', () =>
    {
        camera.aspect = sizes.width / sizes.height
        camera.updateProjectionMatrix()
        renderer.setSize(sizes.width, sizes.height)
        renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2))
    })

    /**
     * Camera
     */
    const camera = new THREE.PerspectiveCamera(75, sizes.width / sizes.height, 0.1, 10)
    camera.position.set(3, 3, 3)

    // Controls
    const controls = new OrbitControls(camera, canvas)
    controls.enableDamping = true

    /**
     * Renderer
     */
    const renderer = new THREE.WebGLRenderer({
        canvas: canvas,
        alpha: true
    })
    renderer.setSize(sizes.width, sizes.height)
    renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2))

    /**
     * Animate
     */

    const clock = new THREE.Clock()
    
    const tick = () =>
    {
      const elapsedTime = clock.getElapsedTime()
        points.rotation.y = elapsedTime * 0.01 // Rotating the points slightly each frame

        controls.minPolarAngle = 0;
        controls.maxPolarAngle =  0;
        controls.enableZoom = false;
        controls.update()

        renderer.render(scene, camera)

        window.requestAnimationFrame(tick)
    }

    tick()
  }
}
