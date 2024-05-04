import { application } from "./application"

// Define a function to dynamically import controllers
const importController = async (name) => {
  const { default: Controller } = await import(`./${name}_controller`);
  application.register(name, Controller);
};

// Register controllers lazily
const lazyLoadControllers = async () => {
  await importController("dark_mode");
  await importController("datepicker");
  await importController("hello");
  await importController("map");
  await importController("map_single");
  await importController("three");
};

// Load controllers lazily
lazyLoadControllers();
