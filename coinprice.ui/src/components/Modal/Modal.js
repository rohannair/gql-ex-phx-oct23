import React from 'react'
import styled from 'styled-components'
import { createPortal } from 'react-dom'

const OuterModal = styled.div`
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  background: rgba(0, 0, 0, 0.6);
  z-index: 9999;
`

const InnerModal = styled.div`
  position: relative;
  display: flex;
  flex-direction: column;
  padding: 30px 30px 20px;
  min-width: 600px;
  max-width: 65%;
  justify-content: center;
  align-items: center;
  background: white;
  border-radius: 3px;
  box-shadow: 0 1px 5px rgba(0, 0, 0, 0.3);
  margin-bottom: 80px;
`

export default ({ children }) =>
  createPortal(
    <OuterModal>
      <InnerModal>
        {children}
      </InnerModal>
    </OuterModal>,
    document.getElementById('modal-root')
  )
