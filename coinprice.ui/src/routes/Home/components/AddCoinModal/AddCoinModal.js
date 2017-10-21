import React from 'react'
import styled from 'styled-components'

const Modal = ({
  className,
  closeModal,
  name,
  updateName,
  symbol,
  updateSymbol,
  submitCoin,
}) =>
  <div className={className}>
    <label>
      Symbol
      <input
        type="text"
        value={symbol}
        onChange={e => {
          e.preventDefault()
          const value = e.target.value
          updateSymbol(value)
        }}
      />
    </label>

    <label>
      Name
      <input
        type="text"
        value={name}
        onChange={e => {
          e.preventDefault()
          const value = e.target.value
          updateName(value)
        }}
      />
    </label>
    <div className="buttonBar">
      <button
        onClick={e => {
          e.preventDefault()
          closeModal()
        }}>
        Close
      </button>
      <button onClick={submitCoin}>Submit</button>
    </div>
  </div>

export default styled(Modal)`
  display: flex;
  flex-direction: column;

  label {
    display: flex;
    flex-direction: column;
    font-size: 1.1rem;
    font-weight: bold;

    input {
      padding: 5px;
      margin: 5px 0 10px;

      &:focus {
        outline: none;
        border-color: blue;
      }
    }
  }

  .buttonBar {
    display: block;
    text-align: right;
  }

`
