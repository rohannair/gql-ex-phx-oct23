import { compose, withState, withHandlers } from 'recompose'
import AddCoinModal from './AddCoinModal'

export default compose(
  withState('name', 'updateName', ''),
  withState('symbol', 'updateSymbol', ''),
  withHandlers({
    submitCoin: ({ name, symbol, createCoin, closeModal }) => e => {
      e.preventDefault()
      createCoin({ name, symbol: symbol.toUpperCase() }).then(() => {
        closeModal()
        window.location.reload()
      })
    },
  })
)(AddCoinModal)
