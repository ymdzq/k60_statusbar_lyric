.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    if-eqz p0, :cond_3

    .line 6
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 16
    const v0, 0x7f0a032f    # @id/ends_group

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/ViewGroup;

    .line 25
    if-nez p0, :cond_0

    .line 27
    goto :goto_2

    .line 29
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewOrderHelper;->sKeyIdSet:Ljava/util/Set;

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result v0

    .line 35
    new-instance v1, Ljava/util/LinkedList;

    .line 36
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const/4 v3, 0x0

    .line 46
    move v4, v3

    .line 47
    :goto_0
    if-ge v4, v0, :cond_2

    .line 48
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    move-result-object v5

    .line 53
    instance-of v6, v5, Landroid/view/ViewGroup;

    .line 54
    if-eqz v6, :cond_1

    .line 56
    move-object v6, v5

    .line 58
    check-cast v6, Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 65
    move-result v6

    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v6

    .line 72
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavigationBarViewOrderHelper;->sKeyIdSet:Ljava/util/Set;

    .line 73
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result v6

    .line 78
    if-eqz v6, :cond_1

    .line 79
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v6

    .line 87
    invoke-virtual {v1, v3, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result v0

    .line 100
    :goto_1
    if-ge v3, v0, :cond_3

    .line 101
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 106
    check-cast v4, Landroid/view/View;

    .line 107
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 109
    move-result-object v5

    .line 112
    check-cast v5, Ljava/lang/Number;

    .line 113
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 115
    move-result v5

    .line 118
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 122
    goto :goto_1

    .line 124
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    return-object p0
    .line 127
.end method
