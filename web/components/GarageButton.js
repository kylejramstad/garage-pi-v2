import React from 'react';

const GarageButton = (props) => {
  let { sendRelay, buttonText } = props;

  return (
    <button id="button" onClick={() => sendRelay()}>{buttonText}</button>
  )
};

export default GarageButton
