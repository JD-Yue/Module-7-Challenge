SELECT card_holder.id, card_holder.name, credit_card.card, transaction.date, transaction.amount, merchant.name as merchant, merchant_category.name as category
FROM card_holder 
  FULL OUTER JOIN credit_card
  ON credit_card.cardholder_id = card_holder.id
    FULL OUTER JOIN transaction 
    ON credit_card.card = transaction.card
		FULL OUTER JOIN merchant
		ON transaction.id_merchant = merchant.id
			FULL OUTER JOIN merchant_category
			ON merchant.id_merchant_category = merchant_category.id
	ORDER BY card_holder.id, credit_card.card, transaction.date
	



       
   
   
