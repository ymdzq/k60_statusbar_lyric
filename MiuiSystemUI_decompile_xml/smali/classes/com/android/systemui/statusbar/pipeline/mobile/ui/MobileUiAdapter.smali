.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final iconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field public isCollecting:Z

.field public lastValue:Ljava/util/List;

.field public final logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

.field public final mobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

.field public final statusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->iconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->mobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->statusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->isCollecting:Z

    .line 2
    const-string v0, "isCollecting="

    .line 4
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->lastValue:Ljava/util/List;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    const-string v0, "Last values sent to icon controller: "

    .line 13
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    return-void
    .line 28
.end method

.method public final start()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->statusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method
