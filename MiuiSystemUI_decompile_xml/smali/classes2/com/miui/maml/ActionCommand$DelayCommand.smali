.class Lcom/miui/maml/ActionCommand$DelayCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mCmd:Ljava/lang/Runnable;

.field private mCommand:Lcom/miui/maml/ActionCommand;

.field private mDelay:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/ActionCommand;J)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 6
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 9
    iput-wide p2, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mDelay:J

    .line 11
    new-instance p1, Lcom/miui/maml/ActionCommand$DelayCommand$1;

    .line 13
    invoke-direct {p1, p0}, Lcom/miui/maml/ActionCommand$DelayCommand$1;-><init>(Lcom/miui/maml/ActionCommand$DelayCommand;)V

    .line 15
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCmd:Ljava/lang/Runnable;

    .line 18
    return-void
    .line 20
.end method

.method public static synthetic access$400(Lcom/miui/maml/ActionCommand$DelayCommand;)Lcom/miui/maml/ActionCommand;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public doPerform()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCmd:Ljava/lang/Runnable;

    .line 6
    iget-wide v2, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mDelay:J

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    return-void
    .line 13
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCmd:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    return-void
    .line 11
.end method

.method public init()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 4
    return-void
    .line 7
.end method
