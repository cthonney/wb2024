// app/javascript/controllers/three_controller.js
import { Controller } from "@hotwired/stimulus"
import * as THREE from "three";
import gsap from 'gsap'

export default class extends Controller {
  connect() {
    console.log("Hey Jude, do not make it bad")
    // Canvas
    const canvas = document.querySelector('canvas.webgl')

    // Scene
    const scene = new THREE.Scene()

    /**
     * Object
     */
    const geometry = new THREE.BoxGeometry(1, 1, 1)
    const material = new THREE.MeshBasicMaterial({ color: 0x00FFFF })
    const mesh = new THREE.Mesh(geometry, material)
    scene.add(mesh)

    /**
     * Sizes
     */
    const sizes = {
        width: 800,
        height: 600
    }

    /**
     * Camera
     */
    const camera = new THREE.PerspectiveCamera(75, sizes.width / sizes.height)
    camera.position.z = 3
    scene.add(camera)

    /**
     * Renderer
     */
    const renderer = new THREE.WebGLRenderer({
        canvas: canvas
    })
    renderer.setSize(sizes.width, sizes.height)
    // Set background to transparent
    renderer.setClearColor( 0xffffff, 0);

    // Time
    // let time = Date.now()

    // Clock - Three JS Class
    const clock = new THREE.Clock()

    gsap.to(mesh.position, { duration: 1, delay: 1, x: 2 })


    // Animations

    const tick = () => {

        // Using Clock
        const elapsedTime = clock.getElapsedTime()

        // Time - Get the time
        // const currentTime = Date.now()
        // const deltaTime = currentTime - time
        // time = currentTime

        // Update objects using Clock
      camera.position.y = Math.sin(elapsedTime)
      camera.position.x = Math.cos(elapsedTime)
      camera.lookAt(mesh.position)

        // Update objects
        // mesh.rotation.y += 0.0003 * deltaTime

        // Render
        renderer.render(scene, camera)

        window.requestAnimationFrame(tick)
    }

    tick()
  }
}
