module.exports = {
    waitForProperty: async function (tp, property, timeout = 10000, interval = 500) {
        return new Promise((resolve, reject) => {
            const startTime = Date.now();

            const checkProperty = async () => {
                const file = tp.file.path;
                const metadata = app.metadataCache.getFileCache(file)?.frontmatter;

                if (metadata && metadata[property] !== undefined) {
                    clearInterval(intervalId);
                    resolve(metadata[property]);
                    return;
                }

                if (Date.now() - startTime > timeout) {
                    clearInterval(intervalId);
                    reject(`❌ Timeout: Property "${property}" not found.`);
                }
            };

            const intervalId = setInterval(() => {
                try {
                    checkProperty();
                } catch (error) {
                    clearInterval(intervalId);
                    reject(error);
                }
            }, interval);
        });
    }
};

