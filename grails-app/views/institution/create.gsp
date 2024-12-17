'use client'

import React, { useState } from 'react'
import { Card, CardContent } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Toggle } from "@/components/ui/toggle"
import { Download, FileJson, FileSpreadsheet } from 'lucide-react'

type CardData = {
  id: number
  name: string
  description: string
}

const cardData: CardData[] = [
  { id: 1, name: "Project Alpha", description: "A groundbreaking initiative for sustainable energy" },
  { id: 2, name: "Operation Beta", description: "Revolutionizing supply chain management" },
  { id: 3, name: "Venture Gamma", description: "Exploring new frontiers in artificial intelligence" },
]

const borderColors = [
  'border-pink-500',
  'border-purple-500',
  'border-indigo-500',
]

export default function ColorfulCards() {
  const [selectedFormat, setSelectedFormat] = useState<'csv' | 'json'>('csv')

  const handleDownload = (id: number, format: 'csv' | 'json') => {
    // Implement download logic here
    console.log(`Downloading ${format} for card ${id}`)
  }

  return (
    <div className="space-y-6 p-6 max-w-2xl mx-auto">
      {cardData.map((card, index) => (
        <Card key={card.id} className={`overflow-hidden ${borderColors[index]} border-4`}>
          <CardContent className="p-0">
            <div className="flex">
              <div className="w-2/3 p-6">
                <h3 className="text-xl font-bold mb-2">{card.name}</h3>
                <p className="text-gray-600">{card.description}</p>
              </div>
              <div className="w-1/3 bg-gray-100 p-4 flex flex-col justify-between">
                <div className="space-y-2">
                  <Button 
                    onClick={() => handleDownload(card.id, selectedFormat)}
                    className="w-full"
                    variant="outline"
                  >
                    <Download className="mr-2 h-4 w-4" /> Download
                  </Button>
                  <div className="flex justify-center space-x-2">
                    <Toggle
                      pressed={selectedFormat === 'csv'}
                      onPressedChange={() => setSelectedFormat('csv')}
                      aria-label="Toggle CSV"
                    >
                      <FileSpreadsheet className="h-4 w-4" />
                    </Toggle>
                    <Toggle
                      pressed={selectedFormat === 'json'}
                      onPressedChange={() => setSelectedFormat('json')}
                      aria-label="Toggle JSON"
                    >
                      <FileJson className="h-4 w-4" />
                    </Toggle>
                  </div>
                </div>
              </div>
            </div>
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

