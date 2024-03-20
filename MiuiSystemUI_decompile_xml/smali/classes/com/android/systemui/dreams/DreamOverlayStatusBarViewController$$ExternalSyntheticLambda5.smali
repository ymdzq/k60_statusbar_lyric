.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 5
    iput p2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$2:Z

    .line 9
    iput-object p4, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 2
    iget v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$2:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 8
    iget-boolean v3, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mIsAttached:Z

    .line 10
    if-eqz v3, :cond_6

    .line 12
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 16
    iget-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 23
    check-cast v3, Ljava/util/HashMap;

    .line 24
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Landroid/view/View;

    .line 30
    if-nez v1, :cond_0

    .line 32
    goto :goto_3

    .line 34
    :cond_0
    if-eqz v2, :cond_1

    .line 35
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    :cond_1
    const/16 p0, 0x8

    .line 42
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_2

    .line 45
    move v2, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v2, p0

    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    .line 53
    move v2, v3

    .line 55
    :goto_1
    iget-object v4, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    .line 56
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    move-result v4

    .line 61
    if-ge v2, v4, :cond_4

    .line 62
    iget-object v4, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 70
    move-result v4

    .line 73
    if-nez v4, :cond_3

    .line 74
    const/4 v0, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_1

    .line 80
    :cond_4
    move v0, v3

    .line 81
    :goto_2
    if-eqz v0, :cond_5

    .line 82
    move p0, v3

    .line 84
    :cond_5
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 85
    :cond_6
    :goto_3
    return-void
    .line 88
.end method
