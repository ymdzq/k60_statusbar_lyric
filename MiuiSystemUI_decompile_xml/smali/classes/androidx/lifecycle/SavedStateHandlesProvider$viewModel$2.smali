.class final Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $viewModelStoreOwner:Landroidx/lifecycle/ViewModelStoreOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;->$viewModelStoreOwner:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;->$viewModelStoreOwner:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;->INSTANCE:Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;

    .line 9
    const-class v2, Landroidx/lifecycle/SavedStateHandlesVM;

    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 13
    move-result-object v3

    .line 16
    new-instance v4, Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 17
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getJClass()Ljava/lang/Class;

    .line 19
    move-result-object v3

    .line 22
    invoke-direct {v4, v3, v1}, Landroidx/lifecycle/viewmodel/ViewModelInitializer;-><init>(Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V

    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const/4 v1, 0x0

    .line 29
    new-array v3, v1, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 36
    array-length v3, v0

    .line 38
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, [Landroidx/lifecycle/viewmodel/ViewModelInitializer;

    .line 43
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 45
    move-result-object v3

    .line 48
    instance-of v4, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 49
    if-eqz v4, :cond_0

    .line 51
    check-cast p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 53
    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 55
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object p0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    .line 60
    :goto_0
    iget-object v4, v3, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 62
    const-string v5, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 64
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 69
    check-cast v4, Landroidx/lifecycle/ViewModel;

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 72
    move-result v6

    .line 75
    if-eqz v6, :cond_1

    .line 76
    goto :goto_3

    .line 78
    :cond_1
    new-instance v4, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 79
    invoke-direct {v4, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 81
    sget-object p0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;->INSTANCE:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;

    .line 84
    invoke-virtual {v4, p0, v5}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 86
    :try_start_0
    array-length p0, v0

    .line 89
    const/4 v6, 0x0

    .line 90
    move-object v7, v6

    .line 91
    :goto_1
    if-ge v1, p0, :cond_4

    .line 92
    aget-object v8, v0, v1

    .line 94
    iget-object v9, v8, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->clazz:Ljava/lang/Class;

    .line 96
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    move-result v9

    .line 101
    if-eqz v9, :cond_3

    .line 102
    iget-object v7, v8, Landroidx/lifecycle/viewmodel/ViewModelInitializer;->initializer:Lkotlin/jvm/functions/Function1;

    .line 104
    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v7

    .line 109
    instance-of v8, v7, Landroidx/lifecycle/ViewModel;

    .line 110
    if-eqz v8, :cond_2

    .line 112
    check-cast v7, Landroidx/lifecycle/ViewModel;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_2

    .line 116
    :cond_2
    move-object v7, v6

    .line 117
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 118
    goto :goto_1

    .line 120
    :cond_4
    if-eqz v7, :cond_6

    .line 121
    iget-object p0, v3, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 123
    invoke-virtual {p0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    move-result-object p0

    .line 128
    check-cast p0, Landroidx/lifecycle/ViewModel;

    .line 129
    if-eqz p0, :cond_5

    .line 131
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 133
    :cond_5
    move-object v4, v7

    .line 136
    :goto_3
    check-cast v4, Landroidx/lifecycle/SavedStateHandlesVM;

    .line 137
    return-object v4

    .line 139
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 145
    const-string v1, "No initializer set for given class "

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 156
    const-string v0, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    .line 158
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p0
    .line 163
.end method
