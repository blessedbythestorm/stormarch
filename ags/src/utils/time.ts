
const time = Variable('', {
  poll: [1000, "date '+%-I:%M %p'"],
});

export const time_menu = Widget.Label({
  label: time.bind()
});
