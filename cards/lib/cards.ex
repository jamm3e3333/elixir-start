defmodule Cards do
  @moduledoc """
    Provides methods for creating and handling a deck of cards
  """

@doc """
  Returns a list of strings representing a deck of playing cards
"""
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hears", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
    # cards = for value <- values do
    #   for suit <- suits do
    #     "#{value} of #{suit}"
    #   end
    # end
    # List.flatten(cards)
  end

  @doc """
    Determines whether a deck contains a given card

    ##Examples

      iex> deck = Cards.create_deck
      iex> Cards.contain?(deck, "Ace of Spades")
      true

  """
  def contain?(deck, card) do
    Enum.member?(deck, card)
  end
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    Divides a deck into a hand and the remainder of the deck.
    The `hand_size` argument indicates how many cards should be in the hand.

  ## Examples

      iex> deck = Cards.create_deck
      iex> { hand, deck } = Cards.deal(deck, 1)
      iex> hand
      ["Ace of Spades"]

  """
  def deal(deck, hand_size) do
      Enum.split(deck, hand_size)
  end

   def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
   end

   def load(filename) do
    case File.read(filename) do
      { :ok, binary } -> :erlang.binary_to_term binary
      { :error, _reason } -> "Invalid file name"
    end
   end

   # create_deal with pipe operator
   def create_deal(hand_size) do
     { hand, _rest } = Cards.create_deck
     |> Cards.shuffle
     |> Cards.deal(hand_size)
     hand
   end
  #  def create_deal(hand_count) do
  #    { hand, _rest } = Cards.deal(
  #      Cards.shuffle(Cards.create_deck),
  #      hand_count
  #     )
  #     hand
  #  end
end
