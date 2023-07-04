import prisma from './prisma'

export async function getNotes() {
  const posts = await prisma.note.findMany()
  return posts
}
