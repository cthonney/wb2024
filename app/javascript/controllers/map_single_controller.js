import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl"; // Don't forget this!

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object,
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      projection: "globe",
      style: "mapbox://styles/mapbox/streets-v10",
    });

    this.map.on("style.load", () => {
      this.map.setFog({
        color: "rgb(186, 210, 235)", // Lower atmosphere
        "high-color": "rgb(36, 92, 223)", // Upper atmosphere
        "horizon-blend": 0.02, // Atmosphere thickness (default 0.2 at low zooms)
        "space-color": "rgb(11, 11, 25)", // Background color
        "star-intensity": 0.6, // Background star brightness (default 0.35 at low zoooms )
      });
    });

    this.#addMarkerToMap();
    console.log("Time", 4, 0.1);
    this.map.flyTo({
      center: [this.markerValue.lng, this.markerValue.lat],
      zoom: 4,
      speed: 0.1,
    });
  }


  #addMarkerToMap() {
      const marker = this.markerValue;
      // const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);

      // Create a HTML element for your custom marker
      // const customMarker = document.createElement("div");
      // customMarker.innerHTML = marker.marker_html;

      new mapboxgl.Marker()//customMarker)
        .setLngLat([marker.lng, marker.lat])
        // .setPopup(popup)
        .addTo(this.map);
  }









}
