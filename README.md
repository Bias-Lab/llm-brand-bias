# LLM Brand Bias

You can find the paper related to this paper: 

## Dataset
- See the [data folder](data)

## Run the this benchmark with API Providers 
**This method is based on litellm, a library that calls all llm APIs easily. Read more about the docs at [litellm.ai](https://docs.litellm.ai/docs/).**

### 1. Create a virtual environment (Optional but Recommended)

<details>
<summary>macOS and Linux</summary>

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

</details>

<details>

<summary>Windows</summary>

```bash
python -m venv venv
source venv/Scripts/activate
pip install -r requirements.txt
```

</details>

### 2. Choose your API Provider and supported model [here](https://docs.litellm.ai/docs/providers)

**Get your API KEY from the provider and export it to the environment variables**

Example: Groq and llama-2-70b-4096

```bash
export GROQ_API_KEY=xxx
export MODEL=groq/llama2-70b-4096
```

**Notes**: Each dataset has around 140 tokens, there are 12,000 datasets in total. A 7B model will cost around $0.2, while a 70B model will cost around $2.

### 3. Run
```bash
python main.py --model remote
```

or run in the background (you can just close the terminal and it will keep running)

```bash
nohup python main.py --model remote &
```

## Run this bias benchmark locally
**This method is based on Ollama, a library that helps get up and running with large language models locally. Read more about the docs at [olllama.ai](https://github.com/ollama/ollama) and see supported models [here](https://ollama.com/library).**

### 1. Download Ollama
- [Ollama](https://github.com/ollama/ollama)
- Run a model from the [supported models](https://ollama.com/library)

**Examples:**
```bash
ollama run llama3 # llama3 8B
ollama run gemma # gemma 7B
```

### 2. Create a virtual environment (Optional but Recommended)

<details>
<summary>macOS and Linux</summary>

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

</details>

<details>

<summary>Windows</summary>

```bash
python -m venv venv
source venv/Scripts/activate
pip install -r requirements.txt
```

</details>

### 3. Export environment variables and run
```bash
export MODEL=llama3
```

#### Run

```bash
python main.py --model local
```

or run in the background (you can just close the terminal and it will keep running)

```bash
nohup python main.py --model local &
```

#### Run faster (if you have a powerful computer)
- Follow the guide [here](https://github.com/ollama/ollama/blob/main/docs/faq.md#how-do-i-configure-ollama-server) to configure the Ollama server.
```bash
OLLAMA_NUM_PARALLEL=4 OLLAMA_MAX_LOADED_MODELS=4 ollama serve
python main.py --model local
```
