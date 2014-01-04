class Paiement < ActiveRecord::Base

	#################################################
	# Regroupe les différentes transactions liée aux
	# commandes. Il peut y avour plusieurs transactions
	# par commande. "amount_cent" est le montant du  
	# paiement en centimes.
	#################################################

	# à ajouter en base:
	# - hash pour le numero de transaction unique
	# - status = false par defaut et = true quand 
	#   il y a confirmation de la banque que le paiement
	#   est accepté


	belongs_to :commande


	def amount_euro
		return self.amount_cents / 100.0
	end
	def date
		return self.created_at
	end
end
