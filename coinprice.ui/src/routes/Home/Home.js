import React from 'react'
import styled from 'styled-components'
import { formatMoney } from 'accounting'

import CoinCard from './components/CoinCard'

const Home = ({ className, data }) => {
  const { viewer, loading } = data
  if (loading) return <div>LOADING!!!!</div>

  return (
    <div className={className}>
      <div className="header">
        {viewer.id} {viewer.name} ({viewer.email}) - {viewer.role}
      </div>

      <div className="coins">
        {viewer.coins.map(c => <CoinCard key={c.id} {...c} />)}
      </div>
    </div>
  )
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
`
