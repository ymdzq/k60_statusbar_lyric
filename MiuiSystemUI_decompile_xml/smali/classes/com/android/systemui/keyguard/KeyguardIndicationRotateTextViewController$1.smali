.class public final Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDozingChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIsDozing:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    const/4 p1, -0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    .line 14
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result p1

    .line 23
    if-lez p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mIndicationQueue:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Integer;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showIndication(I)V

    .line 39
    :cond_2
    :goto_0
    return-void
    .line 42
.end method
