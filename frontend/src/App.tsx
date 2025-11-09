export const App = () => {
    return (
        <div className="h-screen w-screen flex items-center justify-center bg-gradient-to-br from-blue-50 to-indigo-100 dark:from-gray-900 dark:to-gray-800">
            <div className="text-center space-y-6 p-8">
                <h1 className="text-6xl font-bold text-gray-800 dark:text-gray-100">
                    Hello World!
                </h1>
                <p className="text-xl text-gray-600 dark:text-gray-300 max-w-md">
                    Welcome to your React application built with Vite, TypeScript, and Tailwind CSS.
                </p>
                <div className="animate-pulse">
                    <div className="w-16 h-16 mx-auto bg-indigo-500 rounded-full flex items-center justify-center">
                        <span className="text-2xl">👋</span>
                    </div>
                </div>
            </div>
        </div>
    );
};
