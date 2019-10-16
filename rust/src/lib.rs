pub mod life {
  pub fn life(board: Vec<Vec<bool>>) -> Vec<Vec<bool>> {
    return board;
  }
}

#[cfg(test)]
mod tests {
  use crate::life::life;

  #[test]
  fn populated_cell_dies_if_no_neighbours() {
    assert_eq!(
      life(vec![
        vec![false, false, false],
        vec![false, true, false],
        vec![false, false, false]
      ]),
      [
        [false, false, false],
        [false, false, false],
        [false, false, false]
      ]
    );
  }

  #[test]
  #[ignore]
  fn populated_cell_survives_if_two_or_three_neighbours() {}

  #[test]
  #[ignore]
  fn populated_cell_dies_if_one_neighbour() {}

  #[test]
  #[ignore]
  fn populated_cell_dies_if_more_than_three_neighbours() {}

  #[test]
  #[ignore]
  fn empty_cell_populated_if_three_neighbours() {}
}
