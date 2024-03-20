.class Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimSettingsInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GxzwAnimItem"
.end annotation


# instance fields
.field final animDrawable:I

.field final nameRes:I

.field final rtpType:I

.field final type:I

.field final video:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;II)V
    .locals 0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->type:I

    .line 565
    iput p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->rtpType:I

    .line 566
    iput-object p3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->video:Ljava/lang/String;

    .line 567
    iput p4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->nameRes:I

    .line 568
    iput p5, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->animDrawable:I

    return-void
.end method
