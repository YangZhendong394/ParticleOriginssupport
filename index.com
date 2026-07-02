<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>技术支持 · 微元溯生</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background: #0b0b18;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .card {
            max-width: 640px;
            width: 100%;
            background: rgba(255, 255, 255, 0.04);
            backdrop-filter: blur(24px);
            -webkit-backdrop-filter: blur(24px);
            border-radius: 36px;
            padding: 36px 28px 32px;
            border: 1px solid rgba(255, 255, 255, 0.06);
            box-shadow: 0 24px 64px rgba(0, 0, 0, 0.6);
            transition: all 0.2s;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 20px;
            flex-wrap: wrap;
            gap: 12px;
        }

        .title-group {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .icon {
            width: 48px;
            height: 48px;
            background: linear-gradient(135deg, #6dd5ed, #2193b0);
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            flex-shrink: 0;
            box-shadow: 0 6px 20px rgba(33, 147, 176, 0.25);
        }

        .title {
            color: #fff;
            font-size: 22px;
            font-weight: 700;
            letter-spacing: 0.3px;
        }

        .subtitle {
            color: rgba(255, 255, 255, 0.4);
            font-size: 13px;
            font-weight: 400;
            margin-top: 2px;
        }

        .lang-selector {
            position: relative;
            flex-shrink: 0;
        }

        .lang-selector select {
            background: rgba(255, 255, 255, 0.06);
            color: rgba(255, 255, 255, 0.85);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 30px;
            padding: 8px 36px 8px 16px;
            font-size: 13px;
            font-weight: 500;
            appearance: none;
            -webkit-appearance: none;
            cursor: pointer;
            outline: none;
            transition: border 0.2s;
            font-family: inherit;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='8' viewBox='0 0 12 8'%3E%3Cpath d='M1 1l5 5 5-5' stroke='rgba(255,255,255,0.5)' stroke-width='1.5' fill='none' stroke-linecap='round'/%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 14px center;
            background-size: 12px 8px;
        }

        .lang-selector select:hover {
            border-color: rgba(109, 213, 237, 0.4);
        }

        .lang-selector select option {
            background: #1a1a2e;
            color: #fff;
        }

        .section {
            margin-top: 28px;
        }

        .section-title {
            color: rgba(255, 255, 255, 0.3);
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 1.4px;
            font-weight: 600;
            margin-bottom: 14px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.04);
            padding-bottom: 8px;
        }

        .faq-item {
            padding: 14px 0;
            border-bottom: 1px solid rgba(255, 255, 255, 0.04);
        }

        .faq-item:last-child {
            border-bottom: none;
        }

        .faq-q {
            color: #ffffff;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 4px;
            display: flex;
            align-items: baseline;
            gap: 6px;
        }

        .faq-q::before {
            content: "Q";
            color: rgba(109, 213, 237, 0.5);
            font-weight: 600;
            font-size: 12px;
        }

        .faq-a {
            color: rgba(255, 255, 255, 0.55);
            font-size: 13px;
            line-height: 1.7;
            padding-left: 18px;
        }

        .contact-box {
            background: rgba(255, 255, 255, 0.03);
            border-radius: 16px;
            padding: 16px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 12px;
            border: 1px solid rgba(255, 255, 255, 0.05);
            margin-top: 6px;
        }

        .contact-label {
            color: rgba(255, 255, 255, 0.35);
            font-size: 13px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .contact-email {
            color: #6dd5ed;
            font-size: 15px;
            font-weight: 500;
            word-break: break-all;
            letter-spacing: 0.2px;
        }

        .response-time {
            color: rgba(255, 255, 255, 0.25);
            font-size: 12px;
            text-align: center;
            margin-top: 16px;
            padding-top: 12px;
            border-top: 1px solid rgba(255, 255, 255, 0.04);
        }

        @media (max-width: 480px) {
            .card {
                padding: 24px 16px 20px;
                border-radius: 28px;
            }
            .header {
                flex-direction: column;
                align-items: stretch;
            }
            .title-group {
                gap: 10px;
            }
            .title {
                font-size: 19px;
            }
            .lang-selector select {
                width: 100%;
                padding: 10px 40px 10px 16px;
            }
            .contact-box {
                flex-direction: column;
                align-items: stretch;
                text-align: center;
            }
            .faq-a {
                padding-left: 6px;
            }
        }
    </style>
</head>
<body>

    <div class="card" id="app">
        <!-- 头部 -->
        <div class="header">
            <div class="title-group">
                <div class="icon">✦</div>
                <div>
                    <div class="title" id="pageTitle">技术支持</div>
                    <div class="subtitle" id="pageSubtitle">微元溯生 · Particle Origins</div>
                </div>
            </div>
            <div class="lang-selector">
                <select id="langSelect" onchange="switchLanguage(this.value)">
                    <option value="zh">中文</option>
                    <option value="en">English</option>
                    <option value="ja">日本語</option>
                    <option value="ko">한국어</option>
                    <option value="es">Español (LA)</option>
                    <option value="pt">Português (BR)</option>
                </select>
            </div>
        </div>

        <!-- FAQ 部分 -->
        <div class="section">
            <div class="section-title" id="faqTitle">常见问题</div>

            <div class="faq-item">
                <div class="faq-q" id="q1">游戏卡顿怎么办？</div>
                <div class="faq-a" id="a1">请在设置中调低「粒子最大上限」，或关闭「粒子发光效果」。中低端设备建议将粒子上限设为 300 以下。</div>
            </div>

            <div class="faq-item">
                <div class="faq-q" id="q2">游戏进度会丢失吗？</div>
                <div class="faq-a" id="a2">本游戏为纯单机应用，所有数据保存在本地。卸载应用或清除数据会导致进度丢失，请提前使用「存档」功能保存进度。</div>
            </div>

            <div class="faq-item">
                <div class="faq-q" id="q3">内购项目未到账怎么办？</div>
                <div class="faq-a" id="a3">内购由 App Store 官方支付系统处理。如扣款后未解锁，请先尝试重启应用。若仍无效，请联系苹果官方客服处理。</div>
            </div>

            <div class="faq-item">
                <div class="faq-q" id="q4">如何开始游戏？</div>
                <div class="faq-a" id="a4">从主菜单点击「开始演化」进入第一关，或点击「元粒沙盒」进入自由模式。首次游玩建议先完成新手引导。</div>
            </div>

            <div class="faq-item">
                <div class="faq-q" id="q5">调节滑块后生态没有变化？</div>
                <div class="faq-a" id="a5">环境参数调整后需要一定时间才能观察到生态变化。如果滑块被锁定（灰色），说明本关卡暂未解锁该参数。</div>
            </div>
        </div>

        <!-- 联系方式 -->
        <div class="section">
            <div class="section-title" id="contactTitle">联系我们</div>
            <div class="contact-box">
                <span class="contact-label" id="contactLabel">📧 技术支持邮箱</span>
                <span class="contact-email">598129256@qq.com</span>
            </div>
            <div class="response-time" id="responseTime">我们会在 1–3 个工作日内回复您</div>
        </div>
    </div>

    <script>
        // ---------- 多语言数据 ----------
        const translations = {
            zh: {
                pageTitle: '技术支持',
                pageSubtitle: '微元溯生 · Particle Origins',
                faqTitle: '常见问题',
                q1: '游戏卡顿怎么办？',
                a1: '请在设置中调低「粒子最大上限」，或关闭「粒子发光效果」。中低端设备建议将粒子上限设为 300 以下。',
                q2: '游戏进度会丢失吗？',
                a2: '本游戏为纯单机应用，所有数据保存在本地。卸载应用或清除数据会导致进度丢失，请提前使用「存档」功能保存进度。',
                q3: '内购项目未到账怎么办？',
                a3: '内购由 App Store 官方支付系统处理。如扣款后未解锁，请先尝试重启应用。若仍无效，请联系苹果官方客服处理。',
                q4: '如何开始游戏？',
                a4: '从主菜单点击「开始演化」进入第一关，或点击「元粒沙盒」进入自由模式。首次游玩建议先完成新手引导。',
                q5: '调节滑块后生态没有变化？',
                a5: '环境参数调整后需要一定时间才能观察到生态变化。如果滑块被锁定（灰色），说明本关卡暂未解锁该参数。',
                contactTitle: '联系我们',
                contactLabel: '📧 技术支持邮箱',
                responseTime: '我们会在 1–3 个工作日内回复您'
            },
            en: {
                pageTitle: 'Technical Support',
                pageSubtitle: 'Particle Origins · Evolution Simulator',
                faqTitle: 'FAQ',
                q1: 'What should I do if the game lags?',
                a1: 'Please lower the "Max Particle Limit" in settings, or turn off the "Particle Glow Effect". For low-to-mid-end devices, we recommend setting the limit below 300.',
                q2: 'Will my game progress be lost?',
                a2: 'This game is a purely offline single-player app. All data is stored locally. Uninstalling or clearing data will cause progress loss. Please use the "Save" feature to back up your progress in advance.',
                q3: 'What if my in-app purchase doesn\'t arrive?',
                a3: 'In-app purchases are processed by the official App Store payment system. If the item is not unlocked after payment, please try restarting the app. If the issue persists, please contact Apple Support.',
                q4: 'How do I start the game?',
                a4: 'Tap "Start Evolution" from the main menu to enter Level 1, or tap "Particle Sandbox" for free mode. For first-time players, we recommend completing the tutorial first.',
                q5: 'Why doesn\'t the ecosystem change after adjusting sliders?',
                a5: 'After adjusting environmental parameters, it takes some time for ecological changes to become visible. If a slider is locked (gray), it means this parameter is not yet unlocked in the current level.',
                contactTitle: 'Contact Us',
                contactLabel: '📧 Technical Support Email',
                responseTime: 'We will reply within 1–3 business days.'
            },
            ja: {
                pageTitle: 'テクニカルサポート',
                pageSubtitle: '微元溯生 · パーティクルエボリューション',
                faqTitle: 'よくある質問',
                q1: 'ゲームがカクつく場合はどうすればいいですか？',
                a1: '設定で「粒子最大数上限」を下げるか、「粒子発光効果」をオフにしてください。中低端デバイスでは上限を300未満に設定することをお勧めします。',
                q2: 'ゲームの進行は失われますか？',
                a2: '本ゲームは完全オフラインのシングルプレイアプリです。すべてのデータはローカルに保存されます。アンインストールまたはデータ消去を行うと進行が失われます。事前に「保存」機能を使って進行をバックアップしてください。',
                q3: 'アプリ内課金アイテムが届かない場合はどうすればいいですか？',
                a3: 'アプリ内課金は App Store 公式決済システムによって処理されます。支払い後にアンロックされない場合は、アプリを再起動してみてください。それでも解決しない場合は、Apple サポートにお問い合わせください。',
                q4: 'ゲームを始めるにはどうすればいいですか？',
                a4: 'メインメニューから「進化を始める」をタップしてステージ1に入るか、「パーティクルサンドボックス」をタップしてフリーモードに入ります。初めてのプレイの場合は、チュートリアルを完了することをお勧めします。',
                q5: 'スライダーを調整しても生態に変化がないのはなぜですか？',
                a5: '環境パラメータを調整した後、生態の変化が現れるまでにはある程度の時間が必要です。スライダーがロックされている（灰色）場合、現在のステージではそのパラメータがまだアンロックされていないことを意味します。',
                contactTitle: 'お問い合わせ',
                contactLabel: '📧 テクニカルサポートメール',
                responseTime: '1～3営業日以内に返信いたします。'
            },
            ko: {
                pageTitle: '기술 지원',
                pageSubtitle: '미원소생 · 입자 진화 시뮬레이터',
                faqTitle: '자주 묻는 질문',
                q1: '게임이 끊길 경우 어떻게 해야 하나요?',
                a1: '설정에서 "입자 최대 상한"을 낮추거나 "입자 발광 효과"를 끄세요. 중저가 기기는 상한을 300 미만으로 설정하는 것을 권장합니다.',
                q2: '게임 진행 상황이 손실될 수 있나요?',
                a2: '본 게임은 완전 오프라인 싱글 플레이 앱입니다. 모든 데이터는 로컬에 저장됩니다. 앱을 삭제하거나 데이터를 지우면 진행이 손실될 수 있습니다. 미리 "저장" 기능을 사용하여 진행 상황을 백업하세요.',
                q3: '앱 내 구매 아이템이 도착하지 않으면 어떻게 하나요?',
                a3: '앱 내 구매는 App Store 공식 결제 시스템에서 처리됩니다. 결제 후 잠금 해제되지 않은 경우 앱을 다시 시작해 보세요. 문제가 지속되면 Apple 지원에 문의하세요.',
                q4: '게임을 어떻게 시작하나요?',
                a4: '메인 메뉴에서 "진화 시작하기"를 탭하여 1단계로 들어가거나, "입자 샌드박스"를 탭하여 자유 모드로 들어갑니다. 처음 플레이하는 경우 튜토리얼을 먼저 완료하는 것을 권장합니다.',
                q5: '슬라이더를 조정해도 생태계에 변화가 없는 이유는?',
                a5: '환경 매개변수를 조정한 후 생태 변화가 나타나기까지 시간이 필요합니다. 슬라이더가 잠겨 있으면(회색) 현재 단계에서 해당 매개변수가 아직 잠금 해제되지 않았음을 의미합니다.',
                contactTitle: '문의하기',
                contactLabel: '📧 기술 지원 이메일',
                responseTime: '1~3영업일 이내에 답변해 드립니다.'
            },
            es: {
                pageTitle: 'Soporte Técnico',
                pageSubtitle: 'Orígenes de Partículas · Simulador de Evolución',
                faqTitle: 'Preguntas Frecuentes',
                q1: '¿Qué hago si el juego se atasca?',
                a1: 'Reduzca el "Límite máximo de partículas" en la configuración, o desactive el "Efecto de brillo de partículas". Para dispositivos de gama media-baja, recomendamos establecer el límite por debajo de 300.',
                q2: '¿Se perderá mi progreso en el juego?',
                a2: 'Este juego es una aplicación offline para un jugador. Todos los datos se almacenan localmente. Desinstalar o borrar datos provocará pérdida de progreso. Utilice la función "Guardar" para respaldar su progreso con antelación.',
                q3: '¿Qué hago si mi compra dentro de la aplicación no se refleja?',
                a3: 'Las compras dentro de la aplicación son procesadas por el sistema de pago oficial de App Store. Si el artículo no se desbloquea después del pago, intente reiniciar la aplicación. Si el problema persiste, comuníquese con el soporte de Apple.',
                q4: '¿Cómo empiezo el juego?',
                a4: 'Toque "Iniciar Evolución" en el menú principal para ingresar al Nivel 1, o toque "Sandbox de Partículas" para el modo libre. Para los jugadores primerizos, recomendamos completar el tutorial primero.',
                q5: '¿Por qué no cambia el ecosistema después de ajustar los controles deslizantes?',
                a5: 'Después de ajustar los parámetros ambientales, se necesita cierto tiempo para que los cambios ecológicos se hagan visibles. Si un control deslizante está bloqueado (gris), significa que este parámetro aún no está desbloqueado en el nivel actual.',
                contactTitle: 'Contáctenos',
                contactLabel: '📧 Correo de Soporte Técnico',
                responseTime: 'Responderemos en 1–3 días hábiles.'
            },
            pt: {
                pageTitle: 'Suporte Técnico',
                pageSubtitle: 'Origens das Partículas · Simulador de Evolução',
                faqTitle: 'Perguntas Frequentes',
                q1: 'O que fazer se o jogo ficar lento?',
                a1: 'Reduza o "Limite máximo de partículas" nas configurações ou desative o "Efeito de brilho de partículas". Para dispositivos de médio-baixo custo, recomendamos definir o limite abaixo de 300.',
                q2: 'Meu progresso no jogo será perdido?',
                a2: 'Este jogo é um aplicativo offline para um jogador. Todos os dados são armazenados localmente. Desinstalar ou limpar dados causará perda de progresso. Use a função "Salvar" para fazer backup do seu progresso com antecedência.',
                q3: 'O que fazer se minha compra no aplicativo não chegar?',
                a3: 'As compras no aplicativo são processadas pelo sistema de pagamento oficial da App Store. Se o item não for desbloqueado após o pagamento, tente reiniciar o aplicativo. Se o problema persistir, entre em contato com o suporte da Apple.',
                q4: 'Como começo o jogo?',
                a4: 'Toque em "Iniciar Evolução" no menu principal para entrar na Fase 1, ou toque em "Sandbox de Partículas" para o modo livre. Para jogadores de primeira viagem, recomendamos concluir o tutorial primeiro.',
                q5: 'Por que o ecossistema não muda após ajustar os controles deslizantes?',
                a5: 'Após ajustar os parâmetros ambientais, leva algum tempo para que as mudanças ecológicas se tornem visíveis. Se um controle deslizante estiver bloqueado (cinza), significa que este parâmetro ainda não está desbloqueado na fase atual.',
                contactTitle: 'Fale Conosco',
                contactLabel: '📧 E-mail de Suporte Técnico',
                responseTime: 'Responderemos em 1–3 dias úteis.'
            }
        };

        // ---------- 切换函数 ----------
        function switchLanguage(lang) {
            const t = translations[lang];
            if (!t) return;

            document.getElementById('pageTitle').textContent = t.pageTitle;
            document.getElementById('pageSubtitle').textContent = t.pageSubtitle;
            document.getElementById('faqTitle').textContent = t.faqTitle;
            document.getElementById('q1').textContent = t.q1;
            document.getElementById('a1').textContent = t.a1;
            document.getElementById('q2').textContent = t.q2;
            document.getElementById('a2').textContent = t.a2;
            document.getElementById('q3').textContent = t.q3;
            document.getElementById('a3').textContent = t.a3;
            document.getElementById('q4').textContent = t.q4;
            document.getElementById('a4').textContent = t.a4;
            document.getElementById('q5').textContent = t.q5;
            document.getElementById('a5').textContent = t.a5;
            document.getElementById('contactTitle').textContent = t.contactTitle;
            document.getElementById('contactLabel').innerHTML = t.contactLabel;
            document.getElementById('responseTime').textContent = t.responseTime;

            document.getElementById('langSelect').value = lang;
            document.documentElement.lang = lang;
        }

        // ---------- 默认加载英文 ----------
        document.addEventListener('DOMContentLoaded', function() {
            switchLanguage('en');
        });
    </script>

</body>
</html>
