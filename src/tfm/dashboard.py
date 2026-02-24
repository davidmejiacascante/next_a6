import pandas as pd
import streamlit as st
from streamlit_dynamic_filters import DynamicFilters

st.set_page_config(
    page_title='Framework Dashboard',
    layout='wide',
    page_icon=':chart_with_upwards_trend:',
    initial_sidebar_state='expanded',
    menu_items={
        'Get help':'mailto:davidmejia@ups.com',
        'About':'by David Mejia 2026.'
    }
)
st.logo('https://ups.scene7.com/is/content/upsprod/Logo')

df = pd.read_parquet('data/master.parquet')

with st.sidebar:
    st.title('Framework')
    st.header('Dashboard')
    st.subheader('David Mejia')

st.title(':bar_chart: Framework Dashboard')
st.header('Monitoring 24h')

tab1, tab2, tab3 = st.tabs(['Overview','Framework','CloudPublisher'])

   
with tab1:
    st.title('General overview')
    colC1, colC2, colC3, colC4 = st.columns(4)
    with colC1:
        colC1 = st.dataframe(df['Application'].value_counts())
    with colC2:
        colC2 = st.dataframe(df['Server'].value_counts())
    with colC3:
        colC3 = st.text('data')
    with colC4:
        LRQ = (df['Event']=='LongRunningRequest').sum()
        colC4.metric(label='Long Running Requests', value=str(LRQ), border=True)
    st.text('end')

with tab2:
    st.title('CloudPublisherProd')
    st.text('end')

with tab3:
    st.title('FrameworkProd')
    colA1, colA2 = st.columns([1,5])
    with colA1:
        colA1 = st.text('end')
    with colA2:
        colA2 = st.text('text')
    st.text('end')
st.text('SUPER END')