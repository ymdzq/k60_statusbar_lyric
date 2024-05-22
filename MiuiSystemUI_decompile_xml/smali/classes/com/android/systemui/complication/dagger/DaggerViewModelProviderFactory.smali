.class public final Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final mCreator:Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory;->mCreator:Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory;->mCreator:Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;->create()Landroidx/lifecycle/ViewModel;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
