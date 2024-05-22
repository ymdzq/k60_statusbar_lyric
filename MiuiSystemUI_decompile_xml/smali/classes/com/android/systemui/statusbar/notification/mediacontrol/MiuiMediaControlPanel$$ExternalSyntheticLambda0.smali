.class public final synthetic Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/models/player/MediaViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    .line 6
    return-void
    .line 9
.end method
