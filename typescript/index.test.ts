import { life, Board } from '.'

describe('populated cell', () => {
  it('dies of solitude if it has no neighbours', () => {
    const actual = life([
      [false, false, false],
      [false, true, false],
      [false, false, false]
    ])

    const expected: Board = [
      [false, false, false],
      [false, false, false],
      [false, false, false]
    ]

    expect(actual).toEqual(expected)
  })

  it('dies of solitude if it has one neighbour')

  it.todo('dies by overpopulation with more than three neighbours')

  it.todo('survives if it has two or three neighbors ')
})

describe('empty cell', () => {
  it.todo('becomes populated if it has three neighbors')
})
