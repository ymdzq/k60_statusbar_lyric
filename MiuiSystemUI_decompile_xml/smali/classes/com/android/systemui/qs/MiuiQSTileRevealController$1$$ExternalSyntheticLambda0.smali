.class public final synthetic Lcom/android/systemui/qs/MiuiQSTileRevealController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/MiuiQSTileRevealController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSTileRevealController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiQSTileRevealController$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiQSTileRevealController$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController$1;->this$0:Lcom/android/systemui/qs/MiuiQSTileRevealController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mQSPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 6
    iget-boolean v1, v1, Lcom/android/systemui/qs/MiuiQSPanel;->mExpanded:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Landroid/util/ArraySet;

    .line 12
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 14
    iget-object v3, v0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {v3, v2}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/util/Set;)Ljava/util/Set;

    .line 18
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 22
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 25
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    move-result-object v0

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 39
    move-result-object v0

    .line 42
    const-string v2, "QsTileSpecsRevealed"

    .line 43
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 45
    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController$1;->this$0:Lcom/android/systemui/qs/MiuiQSTileRevealController;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 54
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 56
    :cond_0
    return-void
    .line 59
.end method
