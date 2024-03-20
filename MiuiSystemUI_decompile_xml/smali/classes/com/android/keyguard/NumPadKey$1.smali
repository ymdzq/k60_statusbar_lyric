.class public final Lcom/android/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    .line 2
    iget-object v0, p1, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget v0, p1, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    .line 8
    if-lez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    .line 16
    iget v0, v0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    instance-of v0, p1, Lcom/android/keyguard/PasswordTextView;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    .line 30
    check-cast p1, Lcom/android/keyguard/PasswordTextView;

    .line 32
    iput-object p1, v0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    .line 36
    iget-object p1, p1, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    .line 38
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 42
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    .line 48
    iget-object v0, p1, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    .line 50
    iget p1, p1, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 52
    const/16 v1, 0xa

    .line 54
    invoke-static {p1, v1}, Ljava/lang/Character;->forDigit(II)C

    .line 56
    move-result p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 67
    move-result-wide v0

    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 72
    return-void
    .line 75
.end method
