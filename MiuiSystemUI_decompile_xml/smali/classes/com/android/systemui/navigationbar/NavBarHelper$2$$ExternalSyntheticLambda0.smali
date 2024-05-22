.class public final synthetic Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavBarHelper$2;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper$2;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavBarHelper$2;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    iput p3, p0, Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavBarHelper$2;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$2$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper$2;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 6
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisible:Z

    .line 8
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    .line 28
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBar$2;

    .line 30
    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 32
    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 34
    iput-boolean p0, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mWallpaperVisible:Z

    .line 36
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    return-void
    .line 44
.end method
