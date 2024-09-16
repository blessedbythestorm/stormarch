import { utils_menu } from './utils/utils'

const Bar = (monitor: number) => Widget.Window({
  monitor,
  name: `bar${monitor}`,
  anchor: ['top', 'left', 'right'],
  class_name: 'window',
  exclusivity: 'exclusive',
  child: Widget.CenterBox({
    end_widget: utils_menu,
  })
});

App.config({
  windows: [Bar(0)],
  style: './style.css',
});
