.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;->f$0:Landroidx/activity/ComponentActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onContextAvailable()V
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;->f$0:Landroidx/activity/ComponentActivity;

    .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 4
    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 6
    const-string v1, "android:support:activity-result"

    .line 8
    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/ComponentActivity$2;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    move-result-object v1

    .line 26
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 27
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    move-result-object v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-nez v1, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 38
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    move-result-object v3

    .line 43
    iput-object v3, p0, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 44
    const-string v3, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 46
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Ljava/util/Random;

    .line 52
    iput-object v3, p0, Landroidx/activity/ComponentActivity$2;->mRandom:Ljava/util/Random;

    .line 54
    const-string v3, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 56
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 58
    move-result-object v0

    .line 61
    iget-object v3, p0, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 62
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v4

    .line 71
    if-ge v0, v4, :cond_2

    .line 72
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 77
    check-cast v4, Ljava/lang/String;

    .line 78
    iget-object v5, p0, Landroidx/activity/ComponentActivity$2;->mKeyToRc:Ljava/util/Map;

    .line 80
    move-object v6, v5

    .line 82
    check-cast v6, Ljava/util/HashMap;

    .line 83
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 85
    move-result v7

    .line 88
    iget-object v8, p0, Landroidx/activity/ComponentActivity$2;->mRcToKey:Ljava/util/Map;

    .line 89
    if-eqz v7, :cond_1

    .line 91
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v6

    .line 96
    check-cast v6, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 99
    move-result v4

    .line 102
    if-nez v4, :cond_1

    .line 103
    move-object v4, v8

    .line 105
    check-cast v4, Ljava/util/HashMap;

    .line 106
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/Integer;

    .line 115
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 117
    move-result v4

    .line 120
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v6

    .line 124
    check-cast v6, Ljava/lang/String;

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v7

    .line 130
    check-cast v8, Ljava/util/HashMap;

    .line 131
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v4

    .line 139
    check-cast v5, Ljava/util/HashMap;

    .line 140
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    :goto_1
    return-void
    .line 148
.end method
