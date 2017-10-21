import React from 'react'
import styled from 'styled-components'

import Header from './Header'
import Body from './Body'
import Footer from './Footer'

const Base = ({ className, children }) =>
  <div className={className}>
    <Header>CoinPrice&trade;</Header>
    <Body>
      {children}
    </Body>
    <Footer>&copy; Rohan Nair 2017 - Present</Footer>
  </div>

export default styled(Base)`
  display: flex;
  flex-direction: column;

  .body {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
  }
`
