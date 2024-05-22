.class public final Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newUser:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$newUser:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$newUser:Ljava/lang/Object;

    .line 20
    check-cast v1, Landroid/os/UserHandle;

    .line 22
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    move-result v1

    .line 27
    iput v1, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$newUser:Ljava/lang/Object;

    .line 34
    check-cast v1, Landroid/os/UserHandle;

    .line 36
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 43
    iget-object v2, v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingBuilder:Lkotlin/jvm/functions/Function1;

    .line 45
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/settingslib/applications/ServiceListing;

    .line 51
    iput-object v0, v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 55
    iget-object v1, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 57
    iget-object v1, v1, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    .line 59
    check-cast v1, Ljava/util/ArrayList;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingCallback:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 68
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 70
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    .line 80
    :cond_0
    return-void

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 84
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 88
    move-result v0

    .line 91
    if-lez v0, :cond_1

    .line 92
    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 95
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;->$newUser:Ljava/lang/Object;

    .line 97
    check-cast p0, Ljava/util/List;

    .line 99
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->updateServices(Ljava/util/List;)V

    .line 101
    :goto_1
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 106
.end method
