import React from 'react'
import styled from 'styled-components'
// import { formatMoney } from 'accounting'

import CoinCard from './components/CoinCard'
import AddCoinModal from './components/AddCoinModal'
import Modal from '../../components/Modal'

const Home = ({ className, data, modal, toggleModal, createCoin, ...rest }) => {
  const { viewer, loading } = data
  if (loading || !viewer) return <div>LOADING!!!!</div>

  console.log(rest)
  return [
    <div className={className} key="home-body">
      <div className="header">
        {viewer.id} {viewer.name} ({viewer.email}) - {viewer.role}
      </div>

      <div className="coins">
        {viewer.coins.map(c => <CoinCard key={c.id} {...c} />)}
      </div>

      <div className="actionBar">
        <button
          onClick={e => {
            e.preventDefault()
            toggleModal(!modal)
          }}>
          New Coin
        </button>
      </div>
    </div>,
    modal &&
      <Modal key="home-modal">
        <AddCoinModal
          closeModal={toggleModal.bind(this, false)}
          createCoin={createCoin}
        />
      </Modal>,
  ]
}

export default styled(Home)`
  .coins {
    display: flex;
    flex-direction: row;
    margin-top: 20px;

    * + * {
      margin-left: 20px;
    }
  }

  .actionBar {
    display: block;
    width: 100%;
    text-align: right;
    margin: 10px 0;
  }
`
