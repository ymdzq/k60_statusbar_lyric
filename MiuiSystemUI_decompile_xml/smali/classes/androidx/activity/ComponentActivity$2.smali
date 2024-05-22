.class public final Landroidx/activity/ComponentActivity$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final transient mKeyToCallback:Ljava/util/Map;

.field public final mKeyToLifecycleContainers:Ljava/util/Map;

.field public final mKeyToRc:Ljava/util/Map;

.field public mLaunchedKeys:Ljava/util/ArrayList;

.field public final mParsedPendingResults:Ljava/util/Map;

.field public final mPendingResults:Landroid/os/Bundle;

.field public mRandom:Ljava/util/Random;

.field public final mRcToKey:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    .line 5
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mRandom:Ljava/util/Random;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mRcToKey:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mKeyToRc:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 40
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mKeyToCallback:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    .line 47
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mParsedPendingResults:Ljava/util/Map;

    .line 52
    new-instance v0, Landroid/os/Bundle;

    .line 54
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    iput-object v0, p0, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 59
    return-void
    .line 61
.end method


# virtual methods
.method public final dispatchResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->mRcToKey:Ljava/util/Map;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    if-nez p1, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->mKeyToCallback:Ljava/util/Map;

    .line 20
    check-cast v0, Ljava/util/HashMap;

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-object v1, v0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    .line 32
    if-eqz v1, :cond_1

    .line 34
    iget-object v2, p0, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mContract:Landroidx/activity/result/contract/ActivityResultContract;

    .line 44
    invoke-virtual {v0, p3, p2}, Landroidx/activity/result/contract/ActivityResultContract;->parseResult(Landroid/content/Intent;I)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 49
    check-cast v1, Landroidx/fragment/app/FragmentManager$4;

    .line 50
    invoke-virtual {v1, p2}, Landroidx/fragment/app/FragmentManager$4;->onActivityResult(Ljava/lang/Object;)V

    .line 52
    iget-object p0, p0, Landroidx/activity/ComponentActivity$2;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->mParsedPendingResults:Ljava/util/Map;

    .line 61
    check-cast v0, Ljava/util/HashMap;

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Landroidx/activity/result/ActivityResult;

    .line 68
    invoke-direct {v0, p3, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    .line 70
    iget-object p0, p0, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 73
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    :goto_0
    const/4 p0, 0x1

    .line 78
    :goto_1
    return p0
    .line 79
.end method

.method public final register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/fragment/app/FragmentManager$4;)Landroidx/activity/result/ActivityResultRegistry$3;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->mKeyToRc:Ljava/util/Map;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/activity/ComponentActivity$2;->mRandom:Ljava/util/Random;

    .line 16
    const/high16 v2, 0x7fff0000

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 20
    move-result v1

    .line 23
    :goto_0
    const/high16 v3, 0x10000

    .line 24
    add-int/2addr v1, v3

    .line 26
    iget-object v3, p0, Landroidx/activity/ComponentActivity$2;->mRcToKey:Ljava/util/Map;

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v4

    .line 32
    move-object v5, v3

    .line 33
    check-cast v5, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    iget-object v1, p0, Landroidx/activity/ComponentActivity$2;->mRandom:Ljava/util/Random;

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 44
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v2

    .line 52
    check-cast v3, Ljava/util/HashMap;

    .line 53
    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 61
    check-cast v0, Ljava/util/HashMap;

    .line 62
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->mKeyToCallback:Ljava/util/Map;

    .line 67
    new-instance v1, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    .line 69
    invoke-direct {v1, p3, p2}, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;-><init>(Landroidx/fragment/app/FragmentManager$4;Landroidx/activity/result/contract/ActivityResultContract;)V

    .line 71
    check-cast v0, Ljava/util/HashMap;

    .line 74
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->mParsedPendingResults:Ljava/util/Map;

    .line 79
    check-cast v0, Ljava/util/HashMap;

    .line 81
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 92
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p3, v1}, Landroidx/fragment/app/FragmentManager$4;->onActivityResult(Ljava/lang/Object;)V

    .line 96
    :cond_2
    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->mPendingResults:Landroid/os/Bundle;

    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 101
    move-result-object v1

    .line 104
    check-cast v1, Landroidx/activity/result/ActivityResult;

    .line 105
    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 109
    iget v0, v1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    .line 112
    iget-object v1, v1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    .line 114
    invoke-virtual {p2, v1, v0}, Landroidx/activity/result/contract/ActivityResultContract;->parseResult(Landroid/content/Intent;I)Ljava/lang/Object;

    .line 116
    move-result-object p2

    .line 119
    invoke-virtual {p3, p2}, Landroidx/fragment/app/FragmentManager$4;->onActivityResult(Ljava/lang/Object;)V

    .line 120
    :cond_3
    new-instance p2, Landroidx/activity/result/ActivityResultRegistry$3;

    .line 123
    invoke-direct {p2, p0, p1}, Landroidx/activity/result/ActivityResultRegistry$3;-><init>(Landroidx/activity/ComponentActivity$2;Ljava/lang/String;)V

    .line 125
    return-object p2
    .line 128
.end method
