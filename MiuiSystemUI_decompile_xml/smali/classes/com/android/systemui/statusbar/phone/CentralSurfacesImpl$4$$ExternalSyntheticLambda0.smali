.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

.field public final synthetic f$1:Lcom/android/systemui/plugins/OverlayPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;Lcom/android/systemui/plugins/OverlayPlugin;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->mOverlays:Landroid/util/ArraySet;

    .line 12
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 19
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    .line 32
    return-void

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/OverlayPlugin;

    .line 38
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 40
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 44
    move-result-object v3

    .line 47
    new-instance v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;

    .line 48
    invoke-direct {v4, v0, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;Lcom/android/systemui/plugins/OverlayPlugin;)V

    .line 50
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 53
    invoke-interface {p0, v2, v3, v4, v0}, Lcom/android/systemui/plugins/OverlayPlugin;->setup(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/plugins/OverlayPlugin$Callback;Lcom/android/systemui/plugins/statusbar/DozeParameters;)V

    .line 55
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 60
.end method
