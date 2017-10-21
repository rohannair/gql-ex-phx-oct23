import React from 'react'
import styled from 'styled-components'
import { formatMoney } from 'accounting'

const CoinCard = ({ className, name, symbol, price, id }) =>
  <div className={className}>
    <h3>{name}</h3>
    ({symbol}) - {formatMoney(price, '$', 4)}
  </div>

export default styled(CoinCard)`
  display: flex;
  flex-direction: column;

  padding: 10px 20px 20px;
  border: 1px solid #e1e1e1;
`
