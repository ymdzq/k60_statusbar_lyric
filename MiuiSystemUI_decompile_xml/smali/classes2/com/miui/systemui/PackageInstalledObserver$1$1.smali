.class public final Lcom/miui/systemui/PackageInstalledObserver$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/miui/systemui/PackageInstalledObserver$1;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$uid:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/systemui/PackageInstalledObserver$1;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->this$1:Lcom/miui/systemui/PackageInstalledObserver$1;

    .line 4
    iput-object p2, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->val$packageName:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->val$uid:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->this$1:Lcom/miui/systemui/PackageInstalledObserver$1;

    .line 8
    iget-object v0, v0, Lcom/miui/systemui/PackageInstalledObserver$1;->this$0:Lcom/miui/systemui/PackageInstalledObserver;

    .line 10
    iget-object p0, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->val$packageName:Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lcom/miui/systemui/PackageInstalledObserver;->mPackageInstalledCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lcom/miui/systemui/PackageInstalledObserver$PackageInstalledCallback;

    .line 30
    invoke-interface {v1, p0}, Lcom/miui/systemui/PackageInstalledObserver$PackageInstalledCallback;->onPackageInstalledChanged(Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    return-void

    .line 36
    :goto_1
    iget-object v0, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->this$1:Lcom/miui/systemui/PackageInstalledObserver$1;

    .line 37
    iget-object v0, v0, Lcom/miui/systemui/PackageInstalledObserver$1;->this$0:Lcom/miui/systemui/PackageInstalledObserver;

    .line 39
    iget-object p0, p0, Lcom/miui/systemui/PackageInstalledObserver$1$1;->val$packageName:Ljava/lang/String;

    .line 41
    iget-object v0, v0, Lcom/miui/systemui/PackageInstalledObserver;->mPackageInstalledCallbacks:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 48
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    check-cast v1, Lcom/miui/systemui/PackageInstalledObserver$PackageInstalledCallback;

    .line 59
    invoke-interface {v1, p0}, Lcom/miui/systemui/PackageInstalledObserver$PackageInstalledCallback;->onPackageInstalledChanged(Ljava/lang/String;)V

    .line 61
    goto :goto_2

    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 66
.end method
