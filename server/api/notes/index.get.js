import { getNotes } from '../../data/notes'

export default defineEventHandler(async () => {
  return await getNotes()
})
