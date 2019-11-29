import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker#booking_item_start_date", {
  plugins: [new rangePlugin({ input: "#booking_item_end_date"})]
})
