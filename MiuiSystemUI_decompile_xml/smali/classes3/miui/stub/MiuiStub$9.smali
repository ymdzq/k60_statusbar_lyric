.class public final Lmiui/stub/MiuiStub$9;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lmiui/stub/MiuiStub;


# direct methods
.method public constructor <init>(Lmiui/stub/MiuiStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/stub/MiuiStub$9;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final collapsePanels()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiStub$9;->this$0:Lmiui/stub/MiuiStub;

    .line 2
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 4
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mCentralSurfaces:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 12
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapsePanels()V

    .line 16
    return-void
    .line 19
.end method
