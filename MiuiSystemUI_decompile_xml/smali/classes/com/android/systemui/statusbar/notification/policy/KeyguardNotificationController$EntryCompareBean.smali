.class public final Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final content:Ljava/lang/CharSequence;

.field public final key:Ljava/lang/String;

.field public final subTitle:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->key:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->title:Ljava/lang/CharSequence;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->subTitle:Ljava/lang/CharSequence;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController$EntryCompareBean;->content:Ljava/lang/CharSequence;

    .line 11
    return-void
    .line 13
.end method
