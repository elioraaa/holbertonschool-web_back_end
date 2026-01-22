export default function getFullResponseFromAPI() {
  return new Promise((resolve, reject) => {
    if (success) resolve({ status: 200, body: 'Success' });
    else reject(new Error({ message: 'The fake API is not working currently' }));
  });
};
getFullResponseFromAPI();