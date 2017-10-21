import { compose, withState } from 'recompose'
import withDashboardQuery from './enhancers/withDashboardQuery'
import withCreateCoinMutation from './enhancers/withCreateCoinMutation'
import Home from './Home'

export default compose(
  withState('modal', 'toggleModal', false),
  withCreateCoinMutation,
  withDashboardQuery
)(Home)
