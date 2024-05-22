.class public final synthetic Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumePanelDialog;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelDialog;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanelDialog;->setupAdapterWhenReady()V

    .line 11
    return-void
    .line 14
.end method
