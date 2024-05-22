.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic f$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/activity/ComponentActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda2;->f$0:Landroidx/activity/ComponentActivity;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/ComponentActivity$2;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    iget-object v2, p0, Landroidx/activity/ComponentActivity$2;->mKeyToRc:Ljava/util/Map;

    .line 19
    check-cast v2, Ljava/util/HashMap;

    .line 21
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 23
    move-result-object v3

    .line 26
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 30
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 37
    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    iget-object v2, p0, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 51
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    const-string v2, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 58
    iget-object v1, p0, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 61
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Landroid/os/Bundle;

    .line 67
    const-string v2, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    const-string v1, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 74
    iget-object p0, p0, Landroidx/activity/ComponentActivity$2;->mRandom:Ljava/util/Random;

    .line 76
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 78
    return-object v0
    .line 81
.end method
