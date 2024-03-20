.class Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;
.super Ljava/lang/Object;
.source "BaseResponseStateManager.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponsiveView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/View;

.field private mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

.field final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/view/View;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    return-void
.end method

.method private doResponse(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 2

    .line 302
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 303
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, v0}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;ZLjava/util/List;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 305
    :cond_0
    iget-object p3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object p3, p3, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveViewSpec;->getEffectiveScreenOrientation()I

    move-result p3

    if-nez p1, :cond_1

    .line 306
    iget-object p0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0

    :cond_1
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    if-eqz v0, :cond_4

    .line 307
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 308
    invoke-static {p0, p3}, Lmiuix/responsive/map/ResponsiveSpec;->isScreenOrientationMatch(II)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 310
    invoke-virtual {p1, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;->onResponsiveState(Lmiuix/responsive/map/ScreenSpec;)V

    goto :goto_1

    .line 313
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 314
    invoke-virtual {p1}, Lmiuix/responsive/map/ResponsiveViewSpec;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 316
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public getResponsiveSubject()Landroid/view/View;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .locals 0

    .line 273
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->getResponsiveSubject()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->doResponse(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method
