import React from 'react'
import ReactDOM from 'react-dom'
import Garage from './web/Garage'
import Log from './web/Log'

// Entry point to the app. Written this way for easy extendability.
ReactDOM.render(
  <Garage />
  , document.getElementById('garage')
);

ReactDOM.render(
  <Log />
  , document.getElementById('log')
);