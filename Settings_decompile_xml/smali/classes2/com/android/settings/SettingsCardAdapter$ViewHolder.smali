.class Lcom/android/settings/SettingsCardAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SettingsCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field card:Lcom/android/settings/widget/SettingsStatusCard;

.field final synthetic this$0:Lcom/android/settings/SettingsCardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsCardAdapter;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/SettingsCardAdapter$ViewHolder;->this$0:Lcom/android/settings/SettingsCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
