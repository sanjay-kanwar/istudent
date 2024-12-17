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

export default function YellowBorderCard() {
  const [selectedFormat, setSelectedFormat] = useState<'csv' | 'json'>('csv')

  const handleDownload = (id: number, format: 'csv' | 'json') => {
    // Implement download logic here
    console.log(`Downloading ${format} for card ${id}`)
  }

  return (
    <div className="space-y-6 p-6 max-w-2xl mx-auto">
      {cardData.map((card) => (
        <Card key={card.id} className="overflow-hidden border-gray-400 border-4 shadow-md hover:shadow-lg transition-shadow duration-300">
          <CardContent className="p-0">
            <div className="flex flex-col sm:flex-row">
              <div className="w-full sm:w-2/3 p-6">
                <h3 className="text-xl font-bold mb-2 text-gray-800">{card.name}</h3>
                <p className="text-gray-600">{card.description}</p>
              </div>
              <div className="w-full sm:w-1/3 p-4 flex flex-col justify-between border-t sm:border-t-0 sm:border-l border-yellow-200">
                <div className="space-y-2">
                  <Button 
                    onClick={() => handleDownload(card.id, selectedFormat)}
                    className="w-full bg-border border-yellow-400 hover:bg-yellow-500 text-yellow-900"
                  >
                    <Download className="mr-2 h-4 w-4" /> Download
                  </Button>
                  <div className="flex justify-center space-x-2">
                    <Toggle
                      pressed={selectedFormat === 'csv'}
                      onPressedChange={() => setSelectedFormat('csv')}
                      aria-label="Toggle CSV"
                      className="data-[state=on]:bg-yellow-400 data-[state=on]:text-yellow-900"
                    >
                      <FileSpreadsheet className="h-4 w-4" />
                    </Toggle>
                    <Toggle
                      pressed={selectedFormat === 'json'}
                      onPressedChange={() => setSelectedFormat('json')}
                      aria-label="Toggle JSON"
                      className="data-[state=on]:bg-yellow-400 data-[state=on]:text-yellow-900"
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

