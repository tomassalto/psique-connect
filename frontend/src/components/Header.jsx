import { useState, useEffect } from "react";
import Button from "./Button";
import OnBoarding from "./OnBoarding";

const Header = ({ currentPath }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [dropdownOpen, setDropdownOpen] = useState(false);
  const [sidebarOpen, setSidebarOpen] = useState(false);
  const [showOnboarding, setShowOnboarding] = useState(false);
  const [countries, setCountries] = useState([]);
  const [currencies, setCurrencies] = useState([]);
  const [selectedCurrency, setSelectedCurrency] = useState("ARS");
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchCurrencies = async () => {
      try {
        const token = localStorage.getItem("token");
        const response = await fetch("http://127.0.0.1:8000/api/currencies", {
          headers: { Authorization: `Bearer ${token}` },
        });

        if (!response.ok) throw new Error("Error al cargar las monedas");

        const data = await response.json();

        const sortedCurrencies = data.sort((a, b) => {
          if (a.code === "ARS") return -1;
          if (b.code === "ARS") return 1;
          return a.code.localeCompare(b.code);
        });

        setCurrencies(sortedCurrencies);

        const savedCurrency = localStorage.getItem("currency");
        setSelectedCurrency(savedCurrency || "ARS");
        if (!savedCurrency) localStorage.setItem("currency", "ARS");

        setLoading(false);
      } catch (err) {
        setError(
          "No pudimos cargar las monedas. Por favor, intente nuevamente."
        );
        setLoading(false);
      }
    };
    fetchCurrencies();
  }, []);

  const handleCurrencyChange = (e) => {
    const newCurrency = e.target.value;
    setSelectedCurrency(newCurrency);
    localStorage.setItem("currency", newCurrency);
    window.location.reload();
  };

  useEffect(() => {
    const token = localStorage.getItem("token");
    console.log("Token from localStorage:", token);

    if (token) {
      fetch("http://127.0.0.1:8000/api/perfil", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      })
        .then((response) => response.json())
        .then((data) => {
          console.log("Data received from API:", data);
          console.log(data.onboarding);
          if (data.nombre) {
            setUser(data);
            if (data.rol === "paciente" && data.onboarding === 0) {
              setShowOnboarding(true);
            }
          } else {
            console.error("User data is not in the expected format:", data);
          }
        })
        .catch((error) => {
          console.error("Error fetching user data:", error);
        })
        .finally(() => setLoading(false));
    } else {
      setLoading(false);
    }
  }, []);

  const handleOnboardingComplete = () => {
    setShowOnboarding(false);
  };
  const handleLogout = () => {
    localStorage.removeItem("token");
    setUser(null);
    window.location.href = "/login";
  };

  useEffect(() => {
    const currency = localStorage.getItem("currency") || "ARS";
    setSelectedCurrency(currency);
  }, []);

  const renderLinksForRole = () => {
    if (user) {
      switch (user.rol) {
        case "paciente":
          return (
            <>
              <li>
                <a
                  className="block text-left px-4 py-2 text-[#264534] hover:bg-gray-200 font-bold"
                  href={`${
                    currentPath === "/match-psicologo"
                      ? "#"
                      : "/match-psicologo"
                  }`}
                >
                  Match Psicólogo
                </a>
              </li>
              <li>
                <a
                  href={`${
                    currentPath === "/encontrar-psicologo"
                      ? "#"
                      : "/encontrar-psicologo"
                  }`}
                  className="block text-left px-4 py-2 text-[#264534] hover:bg-gray-200"
                >
                  <p className="font-bold">Buscar Psicologo</p>
                </a>
              </li>
              <li className="flex items-center space-x-1">
                {currencies.find((c) => c.code === selectedCurrency)?.symbol ||
                  "$"}
                <select
                  id="currencySelect"
                  className="text-black bg-transparent border-none focus:ring-0"
                  value={selectedCurrency}
                  onChange={handleCurrencyChange}
                >
                  {currencies.map((currency) => (
                    <option key={currency.code} value={currency.code}>
                      {currency.code} - {currency.name}
                    </option>
                  ))}
                </select>
                {error && (
                  <span className="text-red-500 text-sm ml-2">{error}</span>
                )}
              </li>
            </>
          );
        case "psicologo":
          return (
            <>
              <li>
                <a className="text-[#264534] font-bold" href="/my-patients">
                  Mis Pacientes
                </a>
              </li>
              <li>
                <a className="text-[#264534] font-bold" href="/mi-agenda">
                  Agenda
                </a>
              </li>
            </>
          );
        default:
          return null;
      }
    }
    return null;
  };

  return (
    <header className="flex items-center justify-start gap-2 p-4 bg-white text-white shadow-md lg:justify-end xl:px-[70px]">
      <div className="flex items-center gap-4 lg:hidden">
        {loading ? (
          <div className="text-gray-400">Cargando...</div>
        ) : user ? (
          <a href="/perfil" className="text-[#264534] font-bold">
            Hola, {user.nombre}!
          </a>
        ) : null}
      </div>
      <img src="/logo.png" alt="logo" className="lg:hidden size-16" />
      <button
        className="lg:hidden absolute right-10"
        onClick={() => setSidebarOpen(true)}
      >
        <svg
          xmlns="http://www.w3.org/2000/svg"
          className="h-8 w-8 text-gray-800"
          fill="none"
          viewBox="0 0 24 24"
          stroke="currentColor"
          strokeWidth={2}
        >
          <path
            strokeLinecap="round"
            strokeLinejoin="round"
            d="M4 6h16M4 12h16M4 18h16"
          />
        </svg>
      </button>

      {sidebarOpen && (
        <div className="fixed inset-0 bg-gray-800 bg-opacity-75 z-50">
          <div className="absolute top-0 left-0 w-full h-full bg-white shadow-lg">
            <button
              onClick={() => setSidebarOpen(false)}
              className="absolute focus:outline-none right-2 top-2"
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                className="h-6 w-6 text-gray-800"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
                strokeWidth={2}
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M6 18L18 6M6 6l12 12"
                />
              </svg>
            </button>

            <nav>
              <ul className="px-10 py-10 flex flex-col gap-5 text-[#264534] font-Muli text-[20px] sm:px-[60px]">
                <li>
                  <a
                    href={`${currentPath === "/" ? "#" : "/"}`}
                    className="font-bold"
                  >
                    Inicio
                  </a>
                </li>
                <li>
                  <a href="/como-funciona" className="font-bold">
                    ¿Cómo funciona?
                  </a>
                </li>
                <li>
                  <a href="/blog" className="font-bold">
                    Blog
                  </a>
                </li>
                {renderLinksForRole()}
                {!user ? (
                  <div className="flex flex-col gap-[30px] w-[155px]">
                    <a href={`${currentPath === "/login" ? "#" : "/login"}`}>
                      <Button text="Ingresar" color="primary" />
                    </a>
                    <a
                      href={`${
                        currentPath === "/registrar-usuario"
                          ? "#"
                          : "/registrar-usuario"
                      }`}
                    >
                      <Button text="Registrarse" color="third" />
                    </a>
                  </div>
                ) : null}

                <li>
                  {user && (
                    <button
                      className="bg-red-600 text-white w-full p-3 rounded-lg xsm:w-[196px]"
                      onClick={handleLogout}
                    >
                      Cerrar sesión
                    </button>
                  )}
                </li>
              </ul>
            </nav>
          </div>
        </div>
      )}

      <nav className="hidden lg:flex h-[52px]">
        <ul className="flex gap-[40px] items-center h-[52px] sm:text-[16px] lg:text-xl">
          <li>
            <a
              className="h-[52px] hover:border-b-[2px] hover:border-[#75B781]"
              href={`${currentPath === "/" ? "#" : "/"}`}
            >
              <p className="contents items-center text-[#264534] font-Muli text-center font-bold h-[52px]">
                Inicio
              </p>
            </a>
          </li>
          <li>
            <a
              href="/como-funciona"
              className=" hover:border-b-[2px] hover:border-[#75B781]"
            >
              <p className="contents text-[#264534] font-Muli font-bold">
                ¿Cómo funciona?
              </p>
            </a>
          </li>
          <li>
            <a
              href="/blog"
              className=" hover:border-b-[2px] hover:border-[#75B781]"
            >
              <p className="contents text-[#264534] font-Muli font-bold">
                Blog
              </p>
            </a>
          </li>
          {renderLinksForRole()}
          <div className="flex items-center gap-4">
            {loading ? (
              <div className="text-gray-400">Cargando...</div>
            ) : user ? (
              <div className="relative">
                <button
                  className="focus:outline-none text-[#264534] font-bold border-b-[#75B781] border-b-[1px]"
                  onClick={() => setDropdownOpen(!dropdownOpen)}
                >
                  Hola, {user.nombre}!
                </button>
                {dropdownOpen && (
                  <div className="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg py-2 z-50">
                    <a
                      href="/perfil"
                      className="block text-left px-4 py-2 text-black hover:bg-gray-200"
                    >
                      <p className=" border-b-[#75B781] border-b-[1px]">
                        Mi Perfil
                      </p>
                    </a>
                    {user.rol === "paciente" && (
                      <a
                        href="/mis-preferencias"
                        className="block text-left px-4 py-2 text-black hover:bg-gray-200"
                      >
                        <p className="border-b-[#75B781] border-b-[1px]">
                          Mis Preferencias
                        </p>
                      </a>
                    )}
                    <button
                      className="block text-left w-full px-4 py-2 text-black hover:bg-gray-200"
                      onClick={handleLogout}
                    >
                      <p className=" border-b-[#75B781] border-b-[1px]">
                        Cerrar sesión
                      </p>
                    </button>
                  </div>
                )}
              </div>
            ) : null}
          </div>
        </ul>
      </nav>

      {!user && (
        <div>
          <div className="hidden lg:flex gap-[30px]">
            <a href={`${currentPath === "/login" ? "#" : "/login"}`}>
              <Button text="Ingresar" color="primary" />
            </a>
            <a
              href={`${
                currentPath === "/registrar-usuario"
                  ? "#"
                  : "/registrar-usuario"
              }`}
            >
              <Button text="Registrarse" color="third" />
            </a>
          </div>
        </div>
      )}
      {showOnboarding && (
        <div className="fixed inset-0 h-full w-full bg-gray-900 bg-opacity-75 flex items-center justify-center z-50">
          <div className="bg-white h-full  p-8 rounded-lg w-full relative flex items-center justify-center">
            <OnBoarding onComplete={handleOnboardingComplete} />
          </div>
        </div>
      )}
    </header>
  );
};

export default Header;
