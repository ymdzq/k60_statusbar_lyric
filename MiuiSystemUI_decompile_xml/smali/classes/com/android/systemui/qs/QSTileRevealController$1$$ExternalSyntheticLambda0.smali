.class public final synthetic Lcom/android/systemui/qs/QSTileRevealController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSTileRevealController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileRevealController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileRevealController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSTileRevealController$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileRevealController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/QSTileRevealController$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/qs/QSTileRevealController;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 6
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 10
    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    new-instance v1, Landroid/util/ArraySet;

    .line 16
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 18
    iget-object v3, v0, Lcom/android/systemui/qs/QSTileRevealController;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {v3, v2}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    .line 22
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 26
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 29
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 39
    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object v0

    .line 46
    const-string v2, "QsTileSpecsRevealed"

    .line 47
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 49
    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 58
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 60
    :cond_0
    return-void
    .line 63
.end method
