import { MprisPlayer } from "../../types/service/mpris";

const mpris = await Service.import('mpris');

const player_index = Variable(0);

const inactive_player = Widget.Box({
  child: Widget.Icon({
    icon: 'audio-volume-overamplified-symbolic',
    size: 20,
  })
})

const active_player = Widget.Box({

});

const player = (mpris_players: MprisPlayer[], player_index: number) => {
  const mpris_player = mpris.players[player_index];

  if (!mpris_player) {
    console.log('Media inactive!');
    return inactive_player;
  }

  return Widget.Box({
    children: [
      Widget.Label({
        label: mpris_player.bind('track_title')
      })
    ],
  })
};

export const media_menu = Widget.EventBox({
  child: mpris.bind('players')
    .as(mpris_players => player(mpris_players, player_index.getValue())),
})
