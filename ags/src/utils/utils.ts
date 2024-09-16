import { time_menu } from './time'
import { media_menu } from './media';

export const utils_menu = Widget.Box({
  hpack: 'end',
  class_name: 'time',
  children: [
    media_menu,
    time_menu
  ]
});
