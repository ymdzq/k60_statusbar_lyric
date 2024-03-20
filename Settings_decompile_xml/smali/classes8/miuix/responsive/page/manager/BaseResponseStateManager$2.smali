.class Lmiuix/responsive/page/manager/BaseResponseStateManager$2;
.super Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;
.source "BaseResponseStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;->injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-direct {p0}, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 158
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-virtual {v0, p1}, Lmiuix/responsive/map/ResponsiveViewSpec;->setView(Landroid/view/View;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 164
    invoke-virtual {v1}, Lmiuix/responsive/map/ResponsiveViewSpec;->getViewId()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 165
    invoke-virtual {v1, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-super {p0, p1, p2}, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
