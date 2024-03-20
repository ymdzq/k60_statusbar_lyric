.class public final Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$run$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$run$$inlined$compareBy$1;->$comparator:Ljava/util/Comparator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AppAdapter$callback$1$onServicesUpdated$1$run$$inlined$compareBy$1;->$comparator:Ljava/util/Comparator;

    .line 2
    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 9
    check-cast p2, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 10
    invoke-virtual {p2}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 12
    move-result-object p2

    .line 15
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method
