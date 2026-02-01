/*
    Archivo: unidad7/api/contactos.js
    Descripción: API serverless de Vercel para servir contactos
    Autor: Irene RODRIGUEZ RODRIGUEZ
    Fecha de creación: 01/02/2026
*/

// Datos simulados de contactos
const contactos = [
    {
        id: 1,
        nombre: "Juan Pérez",
        telefono: "912345678",
        email: "juan@example.com",
        direccion: "Calle Principal 123, Madrid",
        tipo: "personal"
    },
    {
        id: 2,
        nombre: "María García",
        telefono: "934567890",
        email: "maria@company.com",
        direccion: "Av. Comercial 456, Barcelona",
        tipo: "trabajo"
    },
    {
        id: 3,
        nombre: "Carlos López",
        telefono: "961234567",
        email: "carlos@example.com",
        direccion: "Plaza Central 789, Valencia",
        tipo: "personal"
    },
    {
        id: 4,
        nombre: "Ana Martínez",
        telefono: "916789012",
        email: "ana@company.com",
        direccion: "Paseo Marítimo 321, Málaga",
        tipo: "trabajo"
    },
    {
        id: 5,
        nombre: "Pedro Rodríguez",
        telefono: "934123456",
        email: "pedro@example.com",
        direccion: "Calle Mayor 654, Bilbao",
        tipo: "personal"
    }
];

export default function handler(req, res) {
    // Habilitar CORS
    res.setHeader('Access-Control-Allow-Credentials', 'true');
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET,OPTIONS,PATCH,DELETE,POST,PUT');
    res.setHeader(
        'Access-Control-Allow-Headers',
        'X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version'
    );

    if (req.method === 'OPTIONS') {
        res.status(200).end();
        return;
    }

    const { tipo } = req.query;

    // Si se pide un tipo específico, filtrar
    if (tipo) {
        const contactosFiltrados = contactos.filter(c => c.tipo === tipo);
        return res.status(200).json({
            success: true,
            data: contactosFiltrados,
            count: contactosFiltrados.length
        });
    }

    // Si no hay filtro, devolver todos
    res.status(200).json({
        success: true,
        data: contactos,
        count: contactos.length
    });
}
